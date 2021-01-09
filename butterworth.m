function fsig = butterworth(sig,low,high,order,fs)
    [b,a] = butter(order, [low high]/(fs/2), 'bandpass');
  
    sig = sig';

    fsig1 = filter(b,a,sig);
    fsig2 = flipud(fsig1); % Flip array in up/down direction.
    fsig2 = filter(b,a,fsig2);
    fsig = flipud(fsig2);
end