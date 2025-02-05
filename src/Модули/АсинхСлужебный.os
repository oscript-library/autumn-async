Процедура ОбработкаИсключенийАсинхронныхПроцедур(
	Обещание,
	ОбработчикИсключений,
	ИмяМетода,
	ЗначенияПараметровМетода) Экспорт

	Параметры = Новый Массив;
	Параметры.Добавить(Обещание);
	Параметры.Добавить(ОбработчикИсключений);
	Параметры.Добавить(ИмяМетода);
	Параметры.Добавить(ЗначенияПараметровМетода);

	Обещания.ВыполнитьДелегат(
		Новый Действие(ЭтотОбъект, "ПерехватитьАсинхИсключение"),
		Параметры
	);

КонецПроцедуры

Процедура ПерехватитьАсинхИсключение(
	Обещание,
	ОбработчикИсключений,
	ИмяМетода,
	ЗначенияПараметровМетода) Экспорт

	Попытка
		Обещание.Получить();
	Исключение
		ОбработчикИсключений.ОбработатьИсключение(ИнформацияОбОшибке(), ИмяМетода, ЗначенияПараметровМетода);
	КонецПопытки;

КонецПроцедуры
