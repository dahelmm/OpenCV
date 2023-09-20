#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <opencv2/core.hpp>
#include <QObject>
#include <stdio.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc.hpp>
#include <opencv2/opencv.hpp>
#include <QDebug>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    cv::VideoCapture video_capture;
    if (!video_capture.open(0)) {
        qDebug()<<"Error";
    }
    cv::Mat frame;
    while (true) {
        video_capture >> frame;

        imshow("Image", frame);
        const int esc_key = 27;
        if (cv::waitKey(10) == esc_key) {
            break;
        }
    }
    cv::destroyAllWindows();
    video_capture.release();
}

MainWindow::~MainWindow()
{
    delete ui;
}

