package com.events.upcoming.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "images")
public class Image {
    
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY) @Column(name = "id_image")
    private Long id;
    @Column(nullable = false)
    private String name;

    public Image() {
    }

    public Image(Long id, String name) {
        this.id = id;
        this.name = name;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

}