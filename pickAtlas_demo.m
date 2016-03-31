AtlasFile = spm_select(Inf, 'image', 'choose a atlas image...');
AtlasFile = cellstr(AtlasFile);
LookUpTable = spm_select(1, 'mat', 'choose the lookup table of the atlas');
ROIFile = spm_select(1, 'mat', 'Choose the ROI files identified the ROI you want to select...');

for iAtlas = 1:numel(AtlasFile)
    pickAtlas(AtlasFile{iAtlas}, LookUpTable, ROIFile);
end