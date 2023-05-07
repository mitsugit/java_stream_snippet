# このファイルはutf-8 with BOMで保存すること

function getcode {
    # powershellのコマンドを表示する
    # Ubuntu環境でも使用できるコマンド

    param()

    $selections = @(
        '検索文字列で始まらない要素抽出',
        'プリント出力',
        '配列の各要素の末尾に特定の文字列を付ける',
        'リストの各要素にの前後に特定の文字列を付ける',
        '特定の文字列を含む要素抽出',
        'objectを格納した配列から特定の条件を持つobjectの名前をリストを抽出',
        'objectを格納した配列から任意の2属性を使用して、mapを作成',
        'objectを格納した配列を任意の属性ごとにグループ化'
        )

    $index = 1
    foreach ($selection in $selections) {
        Write-Host "$index. $selection"
        $index++
    }

    $choice = Read-Host "Enter the number of the message you want to display"
    switch ($choice) {
        '1' {
            Write-Host '
            <対象のリスト>.stream()
            .filter(s -> !s
            .startsWith("<検索文字列>"))
            .collect(Collectors.toList());'
        }
        '2' {
            Write-Host '
            <対象のリスト>.stream()
            .filter(s -> !s.startsWith("a"))
            .collect(Collectors.toList())
            .forEach(System.out::println)'
        }
        '3' {
            Write-Host 'Arrays.stream(<対象の配列>).map(n->n+"マン").toArray();'
        }
        '4' {
            Write-Host '
            <対象のリスト>.stream()
            .map(s -> "/" + s + "/")
            .collect(Collectors.toList());'
        }
        '5' {
            Write-Host '
            <対象のリスト>.stream()
            .filter(s -> s.contains("<検索文字列>"))
            .collect(Collectors.toList());'
        }
        '6' {
            Write-Host '
            Arrays.
            stream(<配列名>)
            .filter( n -> n.getColor().equals("<条件1>") && n.getAge() >= <条件2>)
            .map( n -> n.getName())
            .toArray();'
        }
        '7' {
            Write-Host '
            Arrays
            .stream(<配列名>)
            .collect(Collectors.toMap(Person::getName, Person::getAge));'
        }
        '8' {
            Write-Host '1属性ver'
            Write-Host '
            Arrays
            .stream(<配列名>)
            .collect(Collectors.groupingBy(Person::getAge));'
            Write-Host '2属性ver'
            Write-Host '
            Arrays
            .stream(<配列名>)
            .collect(Collectors.groupingBy(n -> n.getColor() + n.getAge()));'
        }
        '9' {
            Write-Host '
            // 30歳以上の人を抽出し、printメソッドを実行
            Arrays.stream(people)
                .filter(person -> person.getAge() >= 30)
                .forEach(person -> person.print("30歳以上の人: "));
            '
        }

    }
}
