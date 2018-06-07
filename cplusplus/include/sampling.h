#ifndef SAMPLING_H
#define SAMPLING_H
int computeWeights(  pcl::PointCloud<pcl::PointXYZRGB>::Ptr pc, int num_pts, float sigma_sq, int K,std::vector<float>& imp_wt, bool verbose=false);

std::vector<int> weightedRandomSample (std::vector<float> weights, int num_pts, int total_samples, bool verbose=false);

void resamplePC(pcl::PointCloud<pcl::PointXYZRGB>::Ptr pc, pcl::PointCloud<pcl::PointXYZRGB>::Ptr pc_rs,
	std::vector<int> samples, int total_samples, bool verbose=false);


#endif
