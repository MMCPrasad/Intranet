/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author cpm.999cc
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class SystemDto {

    public Integer id;
    public String name;
    public String path;
    public String link;
    public String status;
    public String ent_by;
    public String ent_on;
    public String mod_by;
    public String mod_on;

}
