package br.com.revolua.hawk.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.collections.IteratorUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Order;
import org.springframework.security.authentication.encoding.MessageDigestPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import br.com.revolua.hawk.dao.UserRepository;
import br.com.revolua.hawk.domain.User;

@Service
@Transactional
public class UserService {

	private UserRepository userRepository;
	private MessageDigestPasswordEncoder passwordEncoder;

	@Autowired
	public UserService(UserRepository userRepository,
			MessageDigestPasswordEncoder passwordEncoder) {
		this.userRepository = userRepository;
		this.passwordEncoder = passwordEncoder;
	}

	public Long create(User user) {
		String password = user.getPassword();
		String encodedPassword = passwordEncoder.encodePassword(password, null);
		user.setPassword(encodedPassword);
		userRepository.save(user);
		return user.getId();
	}

	public void update(User user) {
		userRepository.save(user);
	}

	public Iterable<User> findAll() {
		return userRepository.findAll();
	}

	public User findOne(Long id) {
		return userRepository.findOne(id);
	}

	public User findByUsername(String username) {
		return userRepository.findUserByUsername(username);
	}

	public void delete(User user) {
		userRepository.delete(user.getId());
	}
	
	@SuppressWarnings("unchecked")
	public List<User> findUsers(User user, String authenticatedUsername) {
		List<Order> orders = new ArrayList<Sort.Order>();
		Order order = new Order("id");
		orders.add(order);
		order = new Order("username");
		orders.add(order);
		Sort sort = new Sort(orders);
		Iterable<User> searchResult = userRepository.findAll(sort);
		return IteratorUtils.toList(searchResult.iterator());
	}

}
