#ifndef FACEDETECTOR_H
#define FACEDETECTOR_H

#include <opencv2/dnn.hpp>

class FaceDetector
{
    public:
        FaceDetector();
        std::vector<cv::Rect> detect_face_rectangles(const cv::Mat &frame);

    private:
        /// Face detection network
        cv::dnn::Net network_;
        /// Input image width
        const int input_image_width_;
        /// Input image height
        const int input_image_height_;
        /// Scale factor when creating image blob
        const double scale_factor_;
        /// Mean normalization values network was trained with
        const cv::Scalar mean_values_;
        /// Face detection confidence threshold
        const float confidence_threshold_;
};

#endif // FACEDETECTOR_H
