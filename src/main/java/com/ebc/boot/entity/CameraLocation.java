package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 外业记录表中的相机位点实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CameraLocation {

    private FRCommon common;
    private String cameraId;
    private String camera_type;
    private String altitude;
    private String cameraHeight;
    private String deploymentDate;
    private String deploymentTime;
    private String deploymentName;
    private String deploymentWorkState;
    private String deploymentRemarks;
    private String reclaimData;
    private String reclaimTime;
    private String reclaimName;
    private String reclaimWorkState;
    private String reclaimRemarks;
    private String deploymentEnvironment;
    private String slopePosition;
    private String slopeDirection;
    private String slope;
    private String settlementsDistance;
    private String settlementsType;
    private String waterSourceDistance;
    private String waterSourceType;
    private String vegetationType;
    private String arborAverageHeight;
    private String arborType;
    private String arborDbh;
    private String arborAdvantageType;
    private String arborDensity;
    private String shrubHeight;
    private String shrubCoverage;
    private String shrubType;
    private String shrubTypeAdvantageType;
    private String herbaceousType;
    private String herbaceousT;
    private String humanInterferenceType;
}
