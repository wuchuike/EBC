package com.ebc.boot.json;

import com.ebc.boot.entity.EbcUser;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.HashMap;
import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class BootstrapTableJSON<T> {

    private Integer total;
    private List<T> rows;
}

