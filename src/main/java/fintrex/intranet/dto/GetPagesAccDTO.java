/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 *
 * @author asus
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class GetPagesAccDTO {

    private Integer id;
    private String name;
    private String url;
}
