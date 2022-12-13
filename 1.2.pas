uses graphABC;
var
  x0, y0, mx, my, x1, y1, x2, y2, n: integer;
  l, p, x, y, a, b, h: real;
begin
  writeln('дополнить программу, реализованную в ходе предыдущей лабораторной работы');
  writeln('режимом визуализации. Предусмотреть возможность вывода кривой');
  writeln('ограничивающей фигуру на координатную плоскость');
  x0 := 250;
  y0 := 250;
  SetWindowSize(505, 505);
  SetPenColor(clBlack);
  SetPenWidth(3);
  MoveTo(x0, y0);
  Line(-800, y0, 800, y0);
  Line(x0, 600, x0, -600);
  l := -10;
  p := 10;
  mx := 50;
  my := 5;
  x := l;
  while x <= p do
  begin
    y := x ** 3 + x ** 2 + 3 * x + 17;
    x1 := x0 + round(x * mx);
    y1 := y0 - round(y * my);
    setpixel(x1, y1, clred);
    x += 0.0001
  end; 
  read(a, b, n);
  h := (b - a) / n;
  x := a;
  while x <= b do
  begin
    SetPenColor(clBlue);
    y := x ** 3 + x ** 2 + 3 * x + 17;
    x1 := x0 + round(x * mx);
    y1 := y0 - round(y * my);
    line(x1, y1, x1, y0);  
    x += h;
  end;
  while x <= b do
  begin
    SetPenColor(clBlue);
    y := x ** 3 + x ** 2 + 3 * x + 17;
    x1 := x0 + round(x * mx);
    y1 := y0 - round(y * my);
    x2 := x0 + round((x + h) * mx);
    setpencolor(clblue);
    line(x1, y1, x1, y0);
    x += h;
  end;
  x := a;
  y := x ** 3 + x ** 2 + 3 * x + 17;
  x1 := x0 + round(x * mx);
  y1 := y0 - round(y * my);
  MoveTo(x1, y1);
  while x <= b do
  begin
    y := x ** 3 + x ** 2 + 3 * x + 17;
    x1 := x0 + round(x * mx);
    y1 := y0 - round(y * my);
    x2 := x0 + round((h + x) * mx);
    setpencolor(clblue);
    lineto(x1, y1);
    x += h;
  end;
end.