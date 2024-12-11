function [mag, phase] = FreRes(num, den)

p_power = 0:-1:-length(num)+1;
d_power = 0:-1:-length(den)+1;
syms w
numerator = sum(num .* exp(1i * w).^p_power);
denominator = sum(den .* exp(1i * w).^d_power);
transfer_fun = numerator/denominator;
mag = abs(transfer_fun);
phase = angle(transfer_fun);
% ans1 = subs(mag, w, pi/4);
% ans2 = subs(mag, w, pi/2);

% Plot the magnitude response
figure;
subplot(3, 1, 1);
fplot(w, abs(transfer_fun), [-pi, pi]);
xlabel('w (rad)');
title('Magnitude Response');

% Plot the magnitude response in dB
subplot(3, 1, 2);
fplot(w, 20 * log10(abs(transfer_fun)), [-pi, pi]);
xlabel('w (rad)');
title('Magnitude Response (dB)');

% Plot the phase response
subplot(3, 1, 3);
fplot(w, angle(transfer_fun), [-pi, pi]);
xlabel('w (rad)');
title('Phase Response');
end

