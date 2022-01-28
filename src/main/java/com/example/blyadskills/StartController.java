package com.example.blyadskills;

import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;

import java.net.URL;
import java.util.ResourceBundle;

public class StartController implements Initializable {
    @FXML
    private ImageView butF;

    @Override
    public void initialize(URL location, ResourceBundle resources) {
        //butF.setImage(new Image("@/Images/Dengi.png"));
        getClass().getResource("/Images/Dengi.png").;
    }
}