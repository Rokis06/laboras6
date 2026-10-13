
function varargout = graftancot(varargin)
% GRAFTANCOT Apskaiciuoja tangenta ir kotangenta.
% Funkcija priima eilutes vektoriu.
% Be isvesties kintamuju nubraizo abu grafikus.
% Su viena isvestimi grazina tangenta.
% Su dviem isvestimis grazina tangenta ir kotangenta.

if nargin ~= 1
    error('Reikia pateikti viena vektoriu.');
end

x = varargin{1};

if ~isnumeric(x) || ~isreal(x) || ~isrow(x) || isempty(x)
    error('Argumentas turi buti realiuju skaiciu eilutes vektorius.');
end

t = tan(x);
c = cos(x)./sin(x);

if nargout == 0
    figure;

    subplot(2,1,1);
    plot(x, t);
    grid on;
    title('Tangentas');
    xlabel('x');
    ylabel('tan(x)');

    subplot(2,1,2);
    plot(x, c);
    grid on;
    title('Kotangentas');
    xlabel('x');
    ylabel('cot(x)');

elseif nargout == 1
    varargout{1} = t;

elseif nargout == 2
    varargout{1} = t;
    varargout{2} = c;

else
    error('Galima grazinti daugiausia 2 kintamuosius.');
end

end
