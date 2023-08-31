# Satellite_Scapes
🛰️ About the Project:
Satellite imagery plays a vital role in various fields, from environmental monitoring to urban planning. Accurate segmentation of satellite images is crucial for extracting meaningful information from these images. This project employs the Split and Merge algorithm, a technique known for its effectiveness in image segmentation, to divide large satellite images into manageable segments and then intelligently merge them to obtain a comprehensive view.

## 🌐 Features:

Splitting for Precision: The Split and Merge algorithm effectively partitions large satellite images into smaller, coherent segments, ensuring precision in the segmentation process.
Merging for Context: After segmentation, the algorithm intelligently merges segments to reconstruct the original image, preserving contextual information.
Enhanced Analysis: Accurate segmentation aids in land cover classification, object detection, and change detection, enabling better decision-making in various domains.
Customizable: The project provides flexibility to adjust algorithm parameters to cater to different types of satellite images and segmentation requirements.
Visualizations: The resulting segmented images and merged outputs are visualized, showcasing the algorithm's effectiveness.

## Algorithm for Dplit and Merge:
1.Define the criterion to be used for homogeneity. This could be, for example, the average intensity of the pixels in a region, the standard deviation of the intensities, or the entropy of the intensities.
2.Split the image into equal size regions.
3.Calculate the homogeneity for each region.
4.If the region is homogeneous, then merge it with neighbors.
5.The process is repeated until all regions pass the homogeneity test.


Output Images:

![output](https://github.com/shivansh200501/Satellite_Scapes/assets/118676909/bfce32ac-20e5-44f7-95d9-69e933875a1e)
