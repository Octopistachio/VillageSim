/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

draw_text(5, 0, TwelveHourString() + ":" + MinuteString() + ":" + SecondString() + " " + AMPMString());
draw_text(5, 20, WeekdayString() + ", " + MonthString() + " " + DateString() + ", " + YearString());