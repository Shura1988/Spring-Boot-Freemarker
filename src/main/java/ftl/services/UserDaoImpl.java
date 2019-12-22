package ftl.services;

import ftl.model.Adress;
import ftl.model.User;
import ftl.reposytory.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class UserDaoImpl implements Services {

    private final UserRepository userDao;

    @Autowired
    public UserDaoImpl(UserRepository userDao) {
        this.userDao = userDao;
    }


    @Override
    public User update(User user, Adress adress) {
        Optional<User> user1 = userDao.findById(user.getId());
        if (user1.isPresent()) {
            User newUser = user1.get();
            newUser.setId(user.getId());
            newUser.setLogin(user.getLogin());
            newUser.setPassword(user.getPassword());
            newUser.setAge(user.getAge());
            newUser.setName(user.getName());
            newUser.setDescription(user.getDescription());
            newUser.getAdress().setTown(adress.getTown());
            newUser.getAdress().setStreet(adress.getStreet());
            newUser.getAdress().setHouse(adress.getHouse());
            newUser = userDao.save(newUser);
            return newUser;
        } else {
            return saveUser(user, adress);
        }
    }

    @Override
    public User saveUser(User user, Adress adress) {
        User user1 = new User();
        Adress adress1 = new Adress();
        user1.setLogin(user.getLogin());
        user1.setPassword(user.getPassword());
        user1.setAge(user.getAge());
        user1.setName(user.getName());
        user1.setDescription(user.getDescription());
        adress1.setTown(adress.getTown());
        adress1.setStreet(adress.getStreet());
        adress1.setHouse(adress.getHouse());
        user1.setAdress(adress1);
        return userDao.save(user1);
    }

    @Override
    public List<User> getAllUser() {
        return userDao.findAll();
    }


    @Override
    public void delete(long id) {
        userDao.deleteById(id);
    }


}

