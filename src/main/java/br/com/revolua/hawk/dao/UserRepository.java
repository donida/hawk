package br.com.revolua.hawk.dao;

import org.springframework.data.repository.CrudRepository;

import br.com.revolua.hawk.domain.User;

public interface UserRepository extends CrudRepository<User, Long> {

}
