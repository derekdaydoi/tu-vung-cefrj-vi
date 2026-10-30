# Từ vựng CEFR-J A1–B2 kèm nghĩa tiếng Việt

Kho 7.799 từ tiếng Anh theo cấp độ CEFR (A1–B2), mỗi từ có từ loại, nghĩa tiếng Việt và câu ví dụ Anh–Việt. Do [Hoàng Dũng Edu](https://hoangdungedu.io.vn) soạn cho công cụ ôn tập HD Quiz, phát hành miễn phí để giáo viên, học viên và người làm ứng dụng học tiếng Anh cùng dùng.

*A free English–Vietnamese vocabulary list: the 7,799 words of the CEFR-J Wordlist 1.5 (levels A1–B2), each with part of speech, Vietnamese senses and example sentences.*

| Cấp | Số từ |
| --- | --- |
| A1 | 1.164 |
| A2 | 1.411 |
| B1 | 2.446 |
| B2 | 2.778 |
| Tổng | 7.799 từ, 10.615 nghĩa |

## Các file

| File | Nội dung |
| --- | --- |
| `data/vocab-cefrj-vi.json` | Bản đầy đủ: mỗi mục có `headword`, `forms` (biến thể viết), `pos` / `posVi` (từ loại), `level`, danh sách `senses` (nghĩa tiếng Việt, mỗi nghĩa có thể có cấp riêng), `flags`, `gameSafe`, thông tin kiểm định QA |
| `data/theo-cap/A1.json` … `B2.json` | Bản gọn theo cấp: `w` từ, `p` từ loại, `s` các nghĩa, `f` biến thể |
| `data/cau-vi-du/A1.json` … `B2.json` | Câu ví dụ điền từ: `k` các nghĩa, `c` danh sách `[câu tiếng Anh có ___, câu tiếng Việt, số câu Tatoeba]` |
| `qa/qa-overrides.json` | Các quyết định của đợt kiểm định ngày 29/10/2026: tách nghĩa, cấp theo nghĩa, từ nhạy cảm, từ loại nghi sai |
| `HDQuiz-tu-vung-CEFR-J-A1-B2.xlsx` | Bản Excel để giáo viên xem và duyệt |

Ví dụ một mục trong bản đầy đủ:

```json
{
  "headword": "a.m./A.M./am/AM",
  "forms": ["a.m.", "A.M.", "am", "AM"],
  "pos": "adverb",
  "posVi": "trạng từ",
  "level": "A1",
  "senses": [{ "id": "2.1", "vi": "giờ sáng (từ 0:00 đến trước 12:00 trưa)", "level": "A1" }],
  "gameSafe": true
}
```

## Quy tắc dữ liệu

- Nghĩa đầu tiên mang cấp CEFR-J của từ; nghĩa khác chỉ có cấp khi đã xác định.
- Giữ chữ hoa khi nó đổi nghĩa (IT / it, May / may).
- Từ nhạy cảm và mục nghi lỗi vẫn giữ trong kho nhưng có `gameSafe: false`.
- Phần lớn nghĩa đang ở trạng thái `draft` (bản soạn). 65 mục đã qua kiểm định có `status: "qa-checked"`. Góp ý sửa nghĩa rất được hoan nghênh qua Issues.

## Nguồn và giấy phép

- **Danh sách từ và cấp độ:** The CEFR-J Wordlist Version 1.5, Yukio Tono, Tokyo University of Foreign Studies. © Tono Laboratory, TUFS. Dùng miễn phí cho nghiên cứu và thương mại với điều kiện trích dẫn nguồn. Tải bản gốc tại http://www.cefr-j.org/download.html
- **Câu ví dụ (`data/cau-vi-du/`):** Tatoeba Project (https://tatoeba.org), qua bộ dữ liệu của https://www.manythings.org/anki. Giấy phép CC BY 2.0 FR (https://creativecommons.org/licenses/by/2.0/fr/). Mỗi câu kèm số câu Tatoeba để tra tác giả.
- **Nghĩa tiếng Việt, ghi chú và kiểm định:** © Hoàng Dũng Edu, phát hành theo giấy phép CC BY 4.0 (https://creativecommons.org/licenses/by/4.0/). Dùng lại, sửa, dùng thương mại đều được, chỉ cần ghi nguồn "Hoàng Dũng Edu".

Khi dùng lại kho này, vui lòng ghi cả ba nguồn trên.

## Cập nhật

Bản gốc của dữ liệu nằm trong mã nguồn HD Quiz. Sau khi sửa nghĩa ở đó (`data/vocab/qa-overrides.json` rồi `npm run vocab:build`), chạy `sync-from-hdquiz.ps1` để chép bản mới sang kho này.
