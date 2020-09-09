x1=[431.50032,759.5552,1335.3736,2530.388] %输入以下三组数据
y1=[34.06366,35.73132,37.2244,38.61294]
x2=[263.8656,458.7952,839.6584,1740.9088]
y2=[33.5318074,35.1415668,36.8603528,38.244926]
x3=[253.91296,441.854,803.4116,1625.2548]
y3=[34.3625,35.88912,37.5403,38.45364]
a=linspace(min(x1),max(x1)); %插值后将散点连线平滑化
b=interp1(x1,y1,a,'cubic');
c=linspace(min(x2),max(x2));
d=interp1(x2,y2,c,'cubic');
e=linspace(min(x3),max(x3));
f=interp1(x3,y3,e,'cubic');
plot(a,b, 'LineWidth',2, 'LineSmoothing', 'on'); %画ab对应曲线，粗细，平滑
hold on
plot(c,d, 'LineWidth',2, 'LineSmoothing', 'on'); %画cd对应曲线，粗细，平滑
hold on
plot(e,f, 'LineWidth',2, 'LineSmoothing', 'on'); %画ef对应曲线，粗细，平滑
axis([0,3000,33,39])  %确定x轴与y轴框图大小
legend({'MRMV','MVDM','MVLL'},'FontSize',13,'Location','southeast','Orientation','vertical') %题注设置：名称，字号，位置，方向
xlabel('Bit rates（kbps）','FontSize',13,'FontWeight','bold') %x轴设置：标题，字号，字体粗细
ylabel('PSNR（dB）','FontSize',13,'FontWeight','bold') %y轴设置：名称，字号，字体粗细
title('Balloons','FontSize',15,'FontWeight','bold') %标题描述，名称，字号，字体粗细
set(gca,'ygrid','on','gridlinestyle','--','Gridalpha',0.3) %网格设置
grid on; %网格
print(gcf, '-dpng', '-r800', 'C:\Users\Administrator\Desktop\test.png') %保存图片，格式为png，分辨率800，保存路径
