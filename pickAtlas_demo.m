AtlasFile = spm_select(1, 'image', 'choose a atlas image...');
LookUpTable = spm_select(1, 'mat', 'choose the lookup table of the atlas');
ROIFile = spm_select(1, 'mat', 'Choose the ROI files identified the ROI you want to select...');

pickAtlas(AtlasFile, LookUpTable, ROIFile);