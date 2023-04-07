package com.shubh.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.shubh.Entity.Address;
@Repository
public interface AddressRepo extends JpaRepository<Address,Integer> {

}
