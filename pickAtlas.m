function [] = pickAtlas(AtlasFile, LookUpTable, pickFile)

V = spm_vol(AtlasFile);
Y = spm_read_vols(V);

lut  = readtable(LookUpTable, 'Delimiter', '\t', 'ReadVariableNames', false);
pFile = readtable(pickFile, 'Delimiter', '\t');

[path, ~, ~] = fileparts(pickFile);

for aa = 1:size(pFile, 1)
    Y_temp = zeros(size(Y));
    pFile_sub = pFile(aa, :);
    lut_sub = lut(lut.Var1 == pFile_sub.Value, :);
    Y_temp(Y == pFile_sub.Value) = 1;
    fname = fullfile(path, [upper(char(pFile_sub.LogOp)), '_', char(lut_sub.Var2), '.nii']);
    V.fname = fname;
    V = spm_create_vol(V);
    spm_write_plane(V, Y_temp, ':');
end



