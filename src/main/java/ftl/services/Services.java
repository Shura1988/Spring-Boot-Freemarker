package ftl.services;

import ftl.model.Adress;
import ftl.model.User;

import java.util.List;

public interface Services {
    User saveUser(User user, Adress adress);

    User update(User user, Adress adress);

    List<User> getAllUser();

    void delete(long id);
}
