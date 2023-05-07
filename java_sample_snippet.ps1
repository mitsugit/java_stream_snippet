# このファイルはutf-8 with BOMで保存すること

function getcode {
    # powershellのコマンドを表示する
    # Ubuntu環境でも使用できるコマンド

    param()

    $selections = @(
        '文字列リスト',
        'ヒーローリスト',
        '名前、年齢、色属性を持った人クラス',
        '人クラスをインスタンス化したオブジェクトの配列を作成'
        )

    $index = 1
    foreach ($selection in $selections) {
        Write-Host "$index. $selection"
        $index++
    }

    $choice = Read-Host "Enter the number of the message you want to display"
    switch ($choice) {
        '1' {
            Write-Host 'List<String> list = Arrays.asList("a", "bc", "c", "dde","efff"  );'
        }
        '2' {
            Write-Host 'var heros = new String[] { "ロック マン", "ロール ちゃん", "ワイ リー"," エレキ マン"," イエローデビル", "カット マン", "ボンバーマン" };'
        }
        '3' {
            Write-Host 'step1 Person.javaファイルを作成'
            Write-Host 'step2 下記コードを張り付ける'
            Write-Host '
                public class Person {
                private String name;
                private String color;
                private int age;
            
                public Person(String name, String color, int age) {
                    this.name = name;
                    this.color = color;
                    this.age = age;
                }
            
                public String getName() {
                    return name;
                }
            
                public String getColor() {
                    return color;
                }
            
                public int getAge() {
                    return age;
                }
            }
            // 引数なしメソッド
            public void print() {
                System.out.println("Name: " + name + ", Color: " + color + ", Age: " + age);
            }
            // 引数ありメソッド
            public void print(String prefix) {
                System.out.println(prefix + " Name: " + name + ", Color: " + color + ", Age: " + age);
            }
            '
        }
        '4' {
            Write-Host '
            Person[] people =  {
                new Person("Alice", "blue", 25),
                new Person("Bob", "green", 30),
                new Person("Charlie", "blue", 45),
                new Person("Dave", "yellow", 25),
                new Person("Eve", "green", 30)
                };
            '
        }

    }
}
