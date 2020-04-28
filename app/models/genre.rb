class Genre < ActiveHash::Base
  self.data = [
    { id: 1, value: '歴史' },
    { id: 2, value: 'プログラミング' },
    { id: 3, value: '音楽' },
    { id: 4, value: 'スポーツ' },
    { id: 5, value: '常識問題' },
    { id: 6, value: 'なぞなぞ' },
    { id: 7, value: '計算問題' },
    { id: 8, value: '文学' },
    { id: 9, value: 'アニメ/漫画' },
    { id: 10, value: '芸能' },
    { id: 11, value: 'ダジャレ' },
    { id: 12, value: '食' },
    { id: 13, value: '政治経済' },
    { id: 15, value: '地理'},
    { id: 16, value: 'その他' }
  ]
end