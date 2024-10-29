

import '../../../utils/image_path.dart';

class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'School management',
      image: ImagePath.sliderImage,
      discription: "A platform where you can mange your school. make your school degital"
  ),
  UnbordingContent(
      title: 'Track progress of your child',
      image: ImagePath.sliderImage,
      discription: "Shikkha helps you to track progress of your child so they can improve quickly "
  ),
  UnbordingContent(
      title: 'One step forward with shikkha',
      image: ImagePath.sliderImage,
      discription: "Make your school digital and study more interesting  "
  ),
];