/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

/**
 *
 * @author asus
 */
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@Table("pages")
public class Page {

    @Id
    private Integer id;
    private Integer parent;
    private String name;
    private String url;
    private Integer level;

}
