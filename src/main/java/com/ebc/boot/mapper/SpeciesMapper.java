package com.ebc.boot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ebc.boot.entity.Species;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Repository
public interface SpeciesMapper extends BaseMapper<Species> {

    List<Species> getAllSpecies(String tName);
}
