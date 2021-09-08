close all
t = out.position_velocity.Time;
p_ref = out.ref.Data(:,1);
p = out.position_velocity.Data(:,1);
p_m = out.x_m.Data(:,1);
v = out.position_velocity.Data(:,2);
error = out.error.Data(:,1);
m_hat = out.m_hat.Data(:,1);

subplot(2,2,1)
plot(t,p_ref)
hold on;
plot(t,p)
title('x-t')
legend('ref position','Plant position')

grid on;

subplot(2,2,2)
plot(t,v)
title('dxdt-t')
grid on;

subplot(2,2,3)
plot(t,error)
title('error-t')
grid on;

subplot(2,2,4)
plot(t,m_hat)
title('m_{est}-t')
grid on;