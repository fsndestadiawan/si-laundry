package org.opennms.web.notification.bobject;

        import java.util.ArrayList;
        import java.util.List;

        import org.opennms.web.WebSecurityUtils;

        /**
         * This class holds the information parsed from the notifications.xml
         * 
         * author: Arief
         * @version 1.1.1.1
         */
        public class Notifikasi {
            /**
             * The interval to wait between processing target
             */
            private String m_interval;

            /**
             * The name of the notification
             */
            private String m_name;

            /**
             * Comments for the notification
             */
            private String m_comments;

            /**
             * The list of users or other notifications to include in this notification
             */
            private List<NotificationTarget> m_targets;

            /**
             * Default constructor, initializes members
             */
            public Notification() {
                m_targets = new ArrayList<NotificationTarget>();
            }

            /**
             * Sets the name of the notification
             * 
             * @param name
             *            the name to be set for this notification.
             */
            public void setName(String name) {
                m_name = name;
            }

            /**
             * Returns the name of the notification
             * 
             * @return the name of the notification.
             */
            public String getName() {
                return m_name;
            }

            /**
             * Sets the comments for the notification
             * 
             * @param comments
             *            comments to be set for this notification.
             */
            public void setComments(String comments) {
                m_comments = comments;
            }

            /**
             * Returns the comments for the notification
             * 
             * @return comments for this notification.
             */
            public String getComments() {
                return m_comments;
            }

            /**
             * Sets the interval for the notification
             * 
             * @param interval
             *            the interval to be set for this notification.
             */
            public void setInterval(String interval) {
                m_interval = interval;
            }

            /**
             * Returns the string version of the interval
             * 
             * @return the interval for this notification.
             */
            public String getInterval() {
                return m_interval;
            }

            /**
             * Returns the interval converted to milliseconds
             * 
             * @return the interval in milliseconds
             */
            public long getIntervalMilliseconds() {
                long interval = 0;

                if (!m_interval.equals("all")) {
                    // interval = TimeConverter.convertToMillis(m_interval);
                    interval = WebSecurityUtils.safeParseInt(m_interval);
                }

                return interval;
            }

            /**
             * Returns the interval in seconds
             * 
             * @return the interval in seconds
             */
            public long getIntervalSeconds() {
                return getIntervalMilliseconds() / 1000;
            }

            /**
             * Adds a target to the notification
             * 
             * @param target
             *            a target to be added for this notification.
             */
            public void addTarget(NotificationTarget target) {
                m_targets.add(target);
            }

            /**
             * Returns the list of targets
             * 
             * @return the list of targets.
             */
            public List<NotificationTarget> getTargets() {
                return m_targets;
            }
        }
