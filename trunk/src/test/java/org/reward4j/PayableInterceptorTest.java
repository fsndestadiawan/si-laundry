package org.reward4j;

import java.lang.reflect.Method;

import org.junit.Test;
import org.reward4j.model.Coin;
import org.reward4j.model.User;
import org.reward4j.service.RewardService;
import org.reward4j.service.UserNotFoundException;
import org.reward4j.service.UserResolver;

import static org.easymock.classextension.EasyMock.*;

/**
 *
 * @author Peter Kehren <mailto:kehren@eyeslide.de>
 */
public class PayableInterceptorTest {

  @Test
  public void payForActionAfterMethodExecution() throws UserNotFoundException, Throwable {

    User user = new User(1, "john doe");

    RewardService rewardService = createMock(RewardService.class);
    rewardService.payForAction(new Coin(10), "testAction", user);
    expectLastCall().times(1); // payForAction must be called at least once
    replay(rewardService);

    UserResolver userResolver = createMock(UserResolver.class);
    expect(userResolver.getUser()).andReturn(user).times(1);
    replay(userResolver);

    Method method = null;
    PayableTestSupport payableTestSupport = new PayableTestSupport();
    for (Method m : payableTestSupport.getClass().getMethods()) {
      if (m.getName().equalsIgnoreCase("testMe")) {
        method = m;
      }
    }

    PayableInterceptor interceptor = new PayableInterceptor();

    interceptor.setRewardService(rewardService);
    interceptor.setUserResolver(userResolver);
    interceptor.afterReturning(null, method, null, null);

    verify(rewardService);
    verify(userResolver);
  }

  /**
   * A simple class for testing purposes.
   */
  private class PayableTestSupport {
    @Payable(action = "testAction", coins = 10)
    public void testMe() {
    }
  }

}