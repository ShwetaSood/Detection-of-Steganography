# Detection-of-Steganography
Detection of LSB Replacement and LSB Matching Steganography Using Gray Level Run Length Matrix
<p>
A method to detect the typical LSB (Least Significant Bit) embedding and the LSB matching steganography methods applied to grayscale images. The proposed method determines the changes made to some selected features extracted from the gray level run length matrix.
Features used for steganalysis method:
</p>
<ol type="1">
<li>GLNU (Gray Level Non-Uniformity)</li>
<li>RLN (Run Length Non-Uniformity)</li>
<li>Run Percentage/ Number of possible runs</li>
<li>Maximum length of run</li>
</ol>
More details in MS_report.pdf <br>
File descriptions (in both LSB-Matching/ and LSB-Embedding/): <br>
<ol type="1">
<li>generating_images.m - generating 6 images from imput image and calling graymatrix_features.m to save 24 feature vectors (4 for each image)</li>
<li>graph.m - plotting glnu vs size and rln vs size</li>
<li>graymatrix_features.m - calculates gray level run length matrix, and 4 feature vectors</li>
<li>lsb_embedding.m - generate 20,40,60,80,100 percent stego images for training by lsb embedding</li>
<li>lsb_matching.m - generate 20,40,60,80,100 percent stego images for training by lsb embedding</li>
<li>roc.m - plotting various roc curves</li>
<li>testing_accuracy.m - classify the testing data</li>
<li>testing_images.m - generate 40,60,80,100 percent stego images and 100 clean images for testing</li>
<li>training.m - training SVM classifier</li>
</ol>

