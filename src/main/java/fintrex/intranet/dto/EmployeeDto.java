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
public class EmployeeDto {

    public Integer id;
    public String name;
    public String designation;
    public Integer telephone;
    public Integer extension;
    public Integer mobile;
    public String email;
    public String branch;
    public String department;
    public Date dob;
    public String status;
}
