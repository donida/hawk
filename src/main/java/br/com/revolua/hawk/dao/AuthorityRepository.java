package br.com.revolua.hawk.dao;

import org.springframework.data.repository.CrudRepository;

import br.com.revolua.hawk.domain.Authority;

public interface AuthorityRepository extends CrudRepository<Authority, Long> {
	

}
