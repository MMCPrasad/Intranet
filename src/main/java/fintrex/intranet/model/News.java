/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.model;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Table;

/**
 *
 * @author cpm.999cc
 */
@AllArgsConstructor
@NoArgsConstructor
@Setter
@Getter
@ToString
@Table("news")
public class News {

    @Id
    private Integer id;
    private String heading;
    private String para;
    @CreatedDate
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss")
    private Date ent_on;
    @CreatedBy
    private Integer ent_by;
    @LastModifiedBy
    private Integer mod_by;
    @LastModifiedDate
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd hh:mm:ss")
    private Date mod_on;
    private String status;

}
