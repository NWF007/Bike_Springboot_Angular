package com.nwf.bike.repositories;

import com.nwf.bike.models.Bike;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BikeRepository extends JpaRepository<Bike, Long> {

}
