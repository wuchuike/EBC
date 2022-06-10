package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 物种名录
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SpeciesRecord {

    private String speciesName;
    private String latinName;
    private String order;
    private String family;
    private String genus;
    private String nationalProtectedCategory;
    private String IUCURedList;
    private String chinaRedList;
    private String photoNumber;
    private String videoNumber;
    private String detectionsNumber;
    private String occupancyGrid;
    private String RAI;
}
