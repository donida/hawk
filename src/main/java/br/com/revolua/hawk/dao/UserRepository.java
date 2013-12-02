package br.com.revolua.hawk.dao;

import org.springframework.data.repository.PagingAndSortingRepository;

import br.com.revolua.hawk.domain.User;

public interface UserRepository extends PagingAndSortingRepository<User, Long> {
	
	User findUserByUsername(String username);
	
}
