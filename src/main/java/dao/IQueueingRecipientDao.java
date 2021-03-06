package dao;

import entity.QueueingRecipient;
import entity.User;
import java.util.List;

public interface IQueueingRecipientDao {

    public List<QueueingRecipient> getAll();

    public QueueingRecipient getFirstRecipientFromFromQueueingRecipientsButNotCurrent(User user);

    public void delete(QueueingRecipient queueingRecipient);

    public void add(QueueingRecipient queueingRecipient);

    public void addUserToQueueingRecipients(User user);
}
