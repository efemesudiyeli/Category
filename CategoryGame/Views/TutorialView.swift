//
//  TutorialView.swift
//  CategoryGame
//
//  Created by Efe Mesudiyeli on 26.11.2025.
//

import SwiftUI

struct TutorialView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                // Başlık
                VStack(alignment: .leading, spacing: 8) {
                    Text("Nasıl Oynanır?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Category oyununun kurallarını ve akışını hızlıca öğren.")
                        .foregroundStyle(.secondary)
                }
                .padding(.bottom, 8)
                
                // Bölüm: Amaç
                SectionHeader(title: "Amaç")
                Text("""
Seçilen kategoriye uygun ürün/öğe isimleri söyleyerek puan kazanmak. Her oyuncu sırası geldiğinde bir öğe söyler/yazar. Oyun sonunda tüm oyuncuların girdileri listelenir.
""")
                
                // Bölüm: Oyuna Başlama
                SectionHeader(title: "Oyuna Başlama")
                VStack(alignment: .leading, spacing: 8) {
                    Bullet("Ana menüden Play’e bas.")
                    Bullet("Oyuncu isimlerini düzenle veya yeni oyuncu ekle.")
                    Bullet("Start’a basarak oyunu başlat.")
                }
                
                // Bölüm: Oyun Akışı
                SectionHeader(title: "Oyun Akışı")
                VStack(alignment: .leading, spacing: 8) {
                    Bullet("Her turda sıradaki oyuncunun adı ekranda görünür.")
                    Bullet("Rastgele bir kategori seçilir (ör. Meyveler, Markalar, Renkler).")
                    Bullet("Oyuncu, kategoriye uygun bir ürün/öğe yazar.")
                    Bullet("Sıradaki oyuncuya geçilir ve herkes bir kez oynayana kadar devam eder.")
                }
                
                // Bölüm: Kurallar
                SectionHeader(title: "Kurallar")
                VStack(alignment: .leading, spacing: 8) {
                    Bullet("Aynı öğe birden fazla kez kullanılamaz (mümkünse tekrar etmeyin).")
                    Bullet("Kategoriyle alakasız öğeler geçersiz sayılır.")
                    Bullet("Yazım hataları kabul edilmez; net ve anlaşılır yazın.")
                }
                
                // Bölüm: İpuçları
                SectionHeader(title: "İpuçları")
                VStack(alignment: .leading, spacing: 8) {
                    Bullet("Hızlı düşün, basit ve yaygın öğeler seç.")
                    Bullet("Kategoriye göre aklında liste oluştur (ör. Meyveler: elma, armut, muz...).")
                    Bullet("Takım halinde oynarken sıran gelmeden önce fikir üretmeye başla.")
                }
                
                // Bölüm: Oyun Sonu
                SectionHeader(title: "Oyun Sonu")
                Text("""
Tüm oyuncular oynadıktan sonra “End Game” ile oyunu bitirebilirsin. Oyuncuların yazdığı öğeler listelenir. İstersen yeni bir tur başlatıp farklı bir kategoriyle devam edebilirsin.
""")
                
                // Küçük dipnot
                Text("İyi eğlenceler! 🎉")
                    .font(.headline)
                    .padding(.top, 8)
            }
            .padding()
        }
    }
}

private struct SectionHeader: View {
    let title: String
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .padding(.top, 8)
    }
}

private struct Bullet: View {
    let text: String
    init(_ text: String) { self.text = text }
    var body: some View {
        HStack(alignment: .top, spacing: 8) {
            Text("•")
            Text(text)
        }
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    NavigationStack {
        TutorialView()
    }
}
