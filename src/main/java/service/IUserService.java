package service;

import entity.User;

public interface IUserService {

    public void updateUserDetails(User user);

    public User getUserByLogin(String login);

    public void saveUser(User user);

    public User getUserById(int id);

    public int getCountOfUsers();

    public int getCountOfCountries();

    public User getRandomUserButNotCurrent(User currentUser);

    public boolean isSendLimitReached(User user);

    public int getCountOfParcelsAvailableToSendByUser(User user);

}
