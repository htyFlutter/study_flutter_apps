import 'package:flutter/material.dart';
import 'counter_apps.dart';

class ListPractice extends StatelessWidget {
  const ListPractice({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> quadraticQuestions = [
      '二次関数：y = ax² のグラフの形は「放物線」である。',
      '二次関数：y = x² + 3 の頂点の座標は (0, 3) である。',
      '二次関数：y = -x² のグラフは上に凸（山型）である。',
      '二次関数：y = (x - 2)² の頂点のx座標は 2 である。',
      '二次関数：aの値が大きくなるほど、放物線の開き方は狭くなる。',
      '二次関数：x軸と2点で交わるグラフの判別式Dは D > 0 である。',
      '二次関数：y = x² は常にyの値が0以上になる。',
      '二次関数：頂点が原点(0,0)のグラフは y = ax² である。',
      '二次関数：グラフを左右に動かすことを「平行移動」という。',
      '二次関数の最後の問題！y = x² をx軸方向に1動かすと y = (x-1)² である。',
    ];

    final List<String> factorialQuetions = [
      '因数分解：x² - 9 を因数分解すると (x-3)(x+3) である。',
      '因数分解：x² + 4x + 4 は (x+2)² になる。',
      '因数分解：x² + 5x + 6 を因数分解すると (x+2)(x+3) である。',
      '因数分解：3x + 6y の共通因数は 3 である。',
      '因数分解：x² - 2x + 1 は (x-1)² になる。',
      '因数分解：a² - b² は (a-b)(a+b) と因数分解できる。',
      '因数分解：x² + 3x を因数分解すると x(x+3) である。',
      '因数分解：多項式を積の形に表すことを因数分解という。',
      '因数分解：x² - 5x + 4 を因数分解すると (x-1)(x-4) である。',
      '因数分解の最後の問題！2x² + 4x の共通因数は 2x である。',
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'たんげんリスト',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        

      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.book, color: Colors.blueAccent),
            title: Text('にじかんすうくいず'),
            trailing: Icon(Icons.coffee),
            mouseCursor: SystemMouseCursors.click,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CounterApps(
                    title: 'にじかんすう',
                    selectedQuizList: quadraticQuestions,
                  ),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.book, color: Colors.green),
            title: const Text(
              'いんすうぶんかいクイズ',
              style: TextStyle(color: Colors.green),
            ),
            subtitle: const Text('公式を使った展開、因数分解の10問'),
            trailing: const Icon(Icons.coffee),
            mouseCursor: SystemMouseCursors.click,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CounterApps(
                    title: '因数分解クイズ',
                    selectedQuizList: factorialQuetions,
                  ),
                ),
              );
            },
          ),
          const ListTile(
            leading: Icon(Icons.lock, color: Colors.grey),
            title: Text('図形の証明'),
            subtitle: Icon(Icons.coffee),
          ),
        ],
      ),
    );
  }
}
