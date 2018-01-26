function vq = LinearInterpWithClipExtrap(x,v,xq)

    vq = interp1(x,v,xq);

    [XMax, idxVMax] = max(x);
    [XMin, idxVMin] = min(x);

    idxMax = xq > XMax;
    idxMin = xq < XMin;

    vq(idxMax) = v(idxVMax);
    vq(idxMin) = v(idxVMin);

end