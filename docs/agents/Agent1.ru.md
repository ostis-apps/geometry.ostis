# Агент №1
агентная scp-программа для вывода шагов решателя
## Описание работы
Агент предназначен для вывода следующих конструкций:

	1.поиск непосредственных связей между объектами;
	2.поиск аксиом для заданной онтологии;
	3.поиск понятий, на основе которых определяется заданное;
	4.поиск области определения отношения;
Часть кода, на scs-языке, отвечающая за вывод команд этапов решения

	
	ui_menu_file_for_solver_solution <- ui_user_command_class_atom; ui_user_command_class_view_kb;;

	ui_menu_file_for_solver_solution => nrel_main_idtf: 
		[Команда вывода этапов решения] 
		(* <- lang_ru;; *);
		[Command to search solution steps] 
		(* <- lang_en;; *);;

	ui_menu_file_for_solver_solution => ui_nrel_command_template:
		[*
			question_solver _-> ._question_solver_instance
				(*
				_-> ui_arg_1;;				
				*);;
			._question_solver_instance _<- question;;
		*];;

	ui_menu_file_for_solver_solution => ui_nrel_command_lang_template: 
		[Команда вывода этапов решения: $ui_arg_1] 
		(* <- lang_ru;; *);
		[Command to search solution steps: $ui_arg_1] 
		(* <- lang_en;; *);;
	
## Примеры
