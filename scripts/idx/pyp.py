import os
from pathlib import Path

def update_task_ids_exact(root_dir='.'):
    """
    Точно обновляет только IDTF в node элементах без изменения форматирования
    """
    for file_path in Path(root_dir).rglob('*.gwf'):
        try:
            new_idtf = file_path.stem
            updated = False
            
            with open(file_path, 'r', encoding='utf-8') as f:
                lines = f.readlines()
            
            for i, line in enumerate(lines):
                # Проверяем, что это node с idtf начинающимся на task
                if '<node' in line and 'idtf="task' in line:
                    # Разбираем строку на части
                    parts = line.split('idtf="')
                    if len(parts) > 1:
                        # Находим часть после idtf="
                        rest = parts[1]
                        task_part = rest.split('"', 1)
                        if len(task_part) > 1 and task_part[0].startswith('task'):
                            # Собираем строку обратно с новым idtf
                            new_rest = new_idtf + '"' + task_part[1]
                            new_line = parts[0] + 'idtf="' + new_rest
                            
                            if new_line != line:
                                lines[i] = new_line
                                updated = True
                                print(f"  Changed: {task_part[0]} -> {new_idtf}")
            
            if updated:
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.writelines(lines)
                print(f"Updated: {file_path}")
            else:
                print(f"No task nodes in: {file_path}")
                
        except Exception as e:
            print(f"Error with {file_path}: {e}")

# Запуск
if __name__ == "__main__":
    update_task_ids_exact()