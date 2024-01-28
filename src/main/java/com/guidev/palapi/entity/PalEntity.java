package com.guidev.palapi.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "pals")
@Data
public class PalEntity {
    @Id
    @Column(name = "pals_id")
    private String pals_id;

    @Column(name = "pals_name")
    private String pals_name;

    @Column(name = "pals_code")
    private String pals_code;


}
