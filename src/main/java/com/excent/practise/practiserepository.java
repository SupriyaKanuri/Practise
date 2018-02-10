package com.excent.practise;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;


public interface practiserepository extends CrudRepository<practiseentity, Long> {
@Transactional
@Query(value="select * from practise where id=?1", nativeQuery=true)
public List<practiseentity> findById(long id);

}
