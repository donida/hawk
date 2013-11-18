package br.com.revolua.hawk.service;

import org.springframework.beans.factory.annotation.Autowired;
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

	public void delete(User user) {
		userRepository.delete(user.getId());
	}

}
