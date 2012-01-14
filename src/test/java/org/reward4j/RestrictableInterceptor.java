package org.reward4j;

import java.lang.reflect.Method;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.reward4j.model.User;
import org.reward4j.service.RewardService;
import org.reward4j.service.UserResolver;
import org.springframework.aop.MethodBeforeAdvice;

/**
 * @author arief
 */
public class RestrictableInterceptor implements MethodBeforeAdvice {
  private static final Log LOG = LogFactory.getLog(RestrictableInterceptor.class);
  private RewardService rewardService;
  private UserResolver userResolver;

  public void setRewardService(RewardService rewardService) {
    this.rewardService = rewardService;
  }

  public void setUserResolver(UserResolver userResolver) {
    this.userResolver = userResolver;
  }

  @Override
  public void before(Method method, Object[] args, Object target) throws Throwable {
    try {
      if (method.isAnnotationPresent(Restrictable.class)) {
        User user = this.userResolver.getUser();
        double amount = rewardService.getBalance(user).amount();

        Restrictable restrictable = method.getAnnotation(Restrictable.class);
        RestrictionDecider decider = restrictable.decider().newInstance();

        if (decider.decide(amount, restrictable.coins())) {
          throw new RestrictionException("the user has not the necessary account balance to execute this action");
        }
      }
    } catch (Exception e) {
      LOG.warn("action execution is not allowed due to account balance", e);
      throw e;
    }
  }
}