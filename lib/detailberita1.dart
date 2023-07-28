import 'package:flutter/material.dart';
import 'main.dart';

class detail1 extends StatefulWidget {
  const detail1({super.key});

  @override
  State<detail1> createState() => _detail1State();
}

class _detail1State extends State<detail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NewsHomePage()),
              );
            },
          ),
          title: Text('News App',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Container(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  margin: EdgeInsets.fromLTRB(250, 0, 250, 0),
                  width: 1000,
                  height: 200,
                  child: Image(
                      image: NetworkImage(
                          'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQDw8QEBAQEBUVEBYVFRYVERUXFxUaFxUZFhcXGhYYHiggGB4lHRUXLTEhJSkrLi4vFx80OTQtOCgtLisBCgoKDg0OGhAQGy0mHyUvLy4rLS0tLS0tLSsrLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKgBLAMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABQYBBAcDAgj/xABBEAABAwIDBQUGAwUGBwAAAAABAAIDBBEFEiEGEzFBUSJhcYGRBxQyUqGxI0LBYpLR4fAkU1RygrIVQ2NzosPx/8QAGwEBAAEFAQAAAAAAAAAAAAAAAAECAwQFBgf/xAA2EQACAQIEAwUFBwUBAAAAAAAAAQIDEQQFITESQXETUWGBkSKhsdHwBhQyM1LB4RUjYoKSQv/aAAwDAQACEQMRAD8AtxWFlYUrZGlb1C45tILVlV/3nfddkXFsblz1VQ7rM/8A3FVo3OSr+5PovieuzJtXUlv8Qz/dZd1XEdj4s+IUg/6od+6C79F21cV9qH/fpr/H9zoQiIuYAREQBEWEBlERAZUaa2WZxjpI94Ro55NmN8+a+McnP4cDXZTITmdf4GNF3u9Puqjj+1MbQIGP3ULdGsbe7h8z7cSe9dBlOVwrQ7arquS7y7Spub0t1ey+fgi3PwqucdKylDvlD/5KOqsRraJw96iD2E2zN/Rw08iqvhd6pj307XyBnxFrXdlT+z2LukPudQd7HIC1ubUtNtBfp9jZb+WX4Wa4XTsX50nCLleM0t0kk0vC37lkw6vjnYJI3XHPqD0I5LaVCw2Y0VUG37G9MMnfc9h/jqFflx2YYT7tU4VtrbyMacVF6bGERFgFIRYWUAREQBERAEREAREQBERAEREAWFlYQEeiIvWzhDXxCpEUMsp4Mjc70C4o4k6nidT5rpXtDr93SiIHWVwH+lup/T1XNAq0jo8npcNJzfN/AtvsypM9cZLaRxOPm7sj6XXWLKl+y7D8lLJORrLJYf5WaffMrovO8+r9rjZW2Wnp/JtwiItMAiIgCIiAIiICkbf1roXZh/h3D1dr+iqWHbGvqIBNJUCOSVpdGwi+bmMxvpdX7brC/eadwbYvY0m3PKedvEfRVrDqgyUtO8fFE0QyDm1zPh8Lhd1klWP3RW3RVOMqvBCMuG99fHkvM69sjFAKCm3EbYmGIXaABZ3B4PU5gbnuVQrqNj8Vc+NoYyBofK4aDNqfXUehVBrMSqKevAZPMyGYbxjRI4MBeCH6A2+MH1V/wWBs+GyxiXLJI528cTc8ed+o+63MpXaVvExaFCVGDqye/svfS+7fRFMxyq3md44y1OZnWws0H6BdNbwHgqA2hj39s+9bTjeTSWs0Bgu2NvmFfozcAnoPsuLzzRxi97tvq9behm1WrJI+kRFz5bCIiAIiIAiIgCIiAIiIAiIgCIiAIiICOWVhQG2eL+7UxDTaSS7GdRp2neQ+pC9cOHpU3VmoLmUbbLFPeKt+U3ZH2GdDY9o+Z+wUTR0zpZGRMF3PcGjzXkr37MMGzSPq3jRnYj73H4neQ08ysbHYqOFoSqPlt15HZ0qapwUFsjoGG0bYIYoW8GMDR5DitlZWF5fObnJye7LgREVICIiAIiIDCyiICr7ayxQ7md0zqd7SWskALhc6lrmfmaearrRmmkfFkp6gdmaF2sMwIuCD0I1B4hW3aihjmNI2ZjZI9+Q4Ecywlp9RbzVe2wgDK2me0W3lO9htz3ZBb9HLqMrrLgp003xNS15Kz28V/BXRipz4HsyKrnQSt3VQ0wkEkNkNg088kw0sehsvqnwtwtYyOb1zh9x3a2K+3jTVaWAPyy1U7ezCGhgF+y997kgcNP1XRwamrPToZGMpzwkOOm023az3b8iyQT05phDrTsNUxrr9p02Uhzhp32B7irwuS4HLLV1tLljvC2T4idOzdziB3kce9dZXHZ1S7GcY99366e+1zFm4uWju+fUIiLSAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgIxzgASTYAXJPJcj2nxY1dS54vkb2Yx+yDx8zr6K3e0DGt3GKaM9uQXfb8rOn+r7XXOgvXUaTKcNwx7WW726GzhtG+eWOGMXc9waO7qfAC58l3PC6BlPDHCwdljbePU+ZVL9mGCZWurHjV12x35N/M7z4eSvy4b7RY/ta3Yxekd+pugiIubJCIiAIiIAiIgCIiA0Mdhc+nkyC7mgSMHVzCHgedvqufbR4xJUvMojAhgDZYpBfVrsrJGOPDN2uHG7CuorjntPo4oKwCHs7yMSSMB7Oa5ANu+y6LIZRnV7NrXVp93f9eREXaSaNutBkEUUZsZntYD0DtSf3QVoY5WwiRtGHbmCPRxAJJty05nr3rawQnNhhPz/APreoSvw/ezVT3Oyhv8ADmushaKMnF8Vau1zUVbwve50jY3Do2yvmjBAETWt7Ry20tYcBoPqrgqt7N4XjDoXPJJeXOF+Tb5Wj0A9VaVw2c1u1xk33aehgYek6cLN3MIsrC1RfCIiAIiIAiIgCIiAIiIAiIgCIiAIiIDgNdWPnlklebue657ugHgFtYBhLquojhbcAm7z8rR8R/rqowLrPs6wPcU+/eLSTWOo1az8o8+PovTM2xqwmHc1+J6LqUpKKsi000LY2NjYA1rWhrR0AFgF7IVheayk5O7JCIipJCIiAIiIAiIgCIiALnftI2fiO/rXvfmLYmRtFrXvl168fouiqqe0KAvghHIVMJPhny/dwW7yCbji/wDVlis2uHW3tL4lVw6G1TRxjhE0yvPRrWFuviSovHqQvbI6N2UuF3N+a3DzU3hYsyvk/OahsR7mCMEDzJKgsUuKqm+Um3nddi3ZLpc2kWpyq1WtLqK8uZ13AqYRUtPGPywMHo0LdXzFwHgPsvpeb1JOU5N82zAQREVBIREUEhERAEREAREQBERAEREAREQBERAcX2KwQ1lU1rheNnbk8AdG+Z+gK7QBYWUFsZggo6VrSPxH9uTxI+HyGinluc7x/wB6xDt+GOi/d+pBhERacBFhZUEhERAEREAREQBERAZVd2xcPd5CeRjt47xtvrZT00gY1z3cGtLj4AXK5FhOKVeKVscLnl0PvO/c2w7LWuzAE8SBoLdSugyGmoyqV5bRi/evkY2JpSqKKi7Wab8iWqwKavex2kVQ7du/Zfxjd9bKuYtG6N07XGxYRKwnk4GxHhf7qe9ob7moc3i1zCPFpC89qaASOM+UkMc0yBt/ge297DkHAeq6bD1OKhCUt9F6mxl7FS3KUVJ9dvkdHwarE1NBKPzwtd6gX+q3FTPZlijJKeWnaT+BJZt+OR2o49+Yeiua4THUXRxE4eOnR7GMgiIsQkIiIAiIgCIiAIiIAiIgCLKIRcwiLyqKlkYu97WjvKmMXJ2RJ6oo049Tf3g/ryXszFaci++Z+8FeeGrL/wAP0ZX2VT9L9DcREVkthYWUQAIiKCQiIgCIiAIiIAiIgNTEcQigbmkNr8BxJ8lW347EzP7tTsiL/idlaCe+w4qIx+v39W+xu1p3bB4cfU3+iycNnaLmGQDqY3fwXW4LKoRpqU7tvVq+nelY2WHw1JRUqr16kZjMDpYZWjVztdeZvdb+F402QMc1zWTCMMkhf2ScvNt+K+/cJS4tETy4C5G7dcX4XFlo1mEueQx8Dy61wMjs2nMaXW7UVKDpyV0yrGYeNVqpCaUkvBproWPBq6MVAdlyE9h9wARfhe3EXVyXIsMqHaB5Jcxz4iTxOWzm377FdOwSt30DH87Wd4hcpnOD7KacdvqxqU3bVG8i1osRge4NbNE5x4APaT6XWytJKEo6SVioIiKkBERAEREAREQBZWFHY/UGOnkI4kZR56fZXKVN1JqC5smMXJpLmaGKbStYS2IB5HFx+H+aiDtHUX+Jo/0qKUtQ4I94DnnIOnM/wXaYfKqEVwqCb73qbSssHg6fFWt57voZO0dRbi391Rc0znkue4uPeVYv+AxdX+rf4JHgUQNyXO7jb9FnU8ujTd4RSNfH7QZbC7in/wAkDTUckh7DSe/l6rfGATdY/wB4/wAFNVlXDTR55HNjYP6sAOJUTHtnREX3rm9zmOusxYWNtTV1PtDjazvQhaPS5ckRF5cZwREQBERQSEREAREQBERAFpY1VGGmnlHFsbiPG2i3V8yxhzS1wDgRYg8CCq6bSmm9rg5RgOssN/7xh/8AMLou2FaBVMibLNfeRZmXG7tcHTne6jJ9jog7NC90etwOIHhzC8Zdm6gnMZWvPUudfTvK7alnGFcfxW6mZJUa04zcrWTVrd5cc4FfiLiSAKRhu3iOy7Ud6r+HPcWVFW2RzyS2OJ07wDlBBdc8Ovoo12A1epzi5Fid67UdD1Xg7Zepc3KZGBt72zuI9LK+82w360WFhKUYtdouS2ey3ILa6IU1ZI8aRzZZQRwa8aEm3Iqe9n+Ih7p4/wBkPA+h14dFkbEOfbe1BsOTQTYd2Y6KwYHgFPRtcIWWLvicdXO8StVmeZYStScVq+VizKCjpGV/I0MHgkMrZd0IWG5yxvaWOvwc4E6nwAViWjR4TBFlyRtBaLB1tfG63loMZWjVmnHZafW5CCIiwyoIiIAiIgCIiAKC2wP4DB1kH2KnVD7VQ5qe/wArgf0/VZmXtLEwb7y9h7drG/eVzAqYSSi/BozefL+u5WSurGQxulkdla0XJ/Qd6hNmiM8g55RbyIuoz2gyue+kpgcokfc+OYNHpcr0nDJcBpc8Uq+ZdlJ+ykvS135mnUbaVczyKWEBo4dgvdbqbaBe9Dt6WhzamE5h8mlz0Id8Kna2pp8MpgGtA0s1v5pHW4k/cqsYBs9JXSuq6rRjnZrAW3n8G/eyyTDgsNOnKUqdorZ82eENDV4tLvnndxA2BPwtHRg5nv8A/ilH+z5l+zO+3+VqtNbWQ0kOd5EbGiwAHHo1o5qqye0JtzlpnOHIl4BPlZCiFfF1vyFaK2+mdIREXkR0QWEWUAREUEhERAEREAUbV47BF7znLvwAwyWaTYP+G3VSarOMbNSTyVBZO1kdQ2NsrSy7rR/Ibi1+9ZmDhRlJqs7L+flt4lLZO1lYIo94WyPGlgxhc437go6XamlbHFJme4SMc8WY4kNYbOc4flAPFZxfCJHxyNp53QukyhxJc4BoGoa2/YJ6hR1Vsu90cTY5Yoi2nkp3WjOUxyEXLRmuHC3Ek8VlUaODaXHLn320tzVnz9SLk3V4rDFuc7jaW+QgXBysLzc8uyCtOk2opJWsc178ro5JLlpFmxEB5d01I8br5x/APeaWKCOTdGMtyvIvYBhYdO9pK0oNj2h1WHS3ZNCYmNDbGMOsXG99bkA+SUqeB7K85Pi19L6cvO3gwb0e1NMWyOO+Zkh3xD4nNLmfM0H4gsx7UUxY915G5XRtcHRuDhvTZhseRvxUfLsvNK2Tf1Ebne5upoy2MtDWu4ucLm50HBfDtkC2KaKKVjA98Eguwuyvitfncg5eHJXlRy/VOT5c3bx5fWwJrE8ehp5GxvEznOYXgMjc/stNiez0XpJjNO2mFUZBui0EOAJvc2AA43vyUbVYNVvmhqBUQNkZBJETuXFpD3A3AzaEW6r0fsy33FlG2RwyFrmvsCc7XZw4t4WvyWO6eEShxS1v7VtdOfLpYk24sciJiaWzxmWQsYHxFpJy5+fKw4rWm2rpWhrvxjd0rezG4n8E/iGw5DqviswmqmED3zw72GbeMIidkILS0hzc1+fIrTi2Nb/Z97JvAx075AA5ud0xuQLHRo6K7GlgLXnLyTb2vztz035gs1NO2RjJGHM1zQ5p6g6gr0XxDE1jWsaA1rQAAOAA0AX2tRO13w7EoIiKkkIiIAiIgC8qxjTG8OtYtN/Cy9VW9qsTI/AYbXF3nu5BZWDoSrVVGJcpU5VJqMSEwuUsnYW/Nl8QTZeftIazdU772kbJ2etrXJ8iGqSwOjsDO/gAco8OJVTwaP8A4nXOfO7sgZ8l+LQRZg7tRdel4WLjDUwc0qUqmNdSL0pq0n3vuJHAsJlxCQVdbcsFgxvAOt3cm/dTO0EjKaWKrfO9jWMLGwN4SHXlfv1PcFN1E7IYnPdZrGNubcgOQVGwrD5MUqDVVFxC11mN5G3Bo7up5rINFCo60nUnpCOluvLqz0wrDJ8TlFVV3bCD2GDQHuHd1PEq5HD4dBuorAWHYboBwC18YxWKjgzu5DKxg4uI4ADouW4njk80rpHve0ng1rrADkAFJcpUa2Nd4+zBbHdURF5EdEEREAREUEhERAEREAUBjEzmzvyuItSOI1534qwLxlpmON3NaTly6jl0WRhqqpyu1yKqclGV2isylzGyND360rX6vJsSeI6L4knLWzNZI8tyREnOTYuPa15K0GljPFjT2cvAcBy8FhlHE1paI2AHiLCxWf8A1CHOPwLqrru+BWnPIzxskeWb+JoOYk2cO0MyTve0OjD3loqi2xeRplvYv5KytoogLCNoGYOtYcRwKOo4zmBY03NzccT1T+oU7/h+BKrxXIr1W0tbG7PdgYbtFRre/HN+ZfNTWOvO5jnAbiPKL6i5A9e9WI4fCQAYmG3DsjRZdSRm92NNwAdBqBwChY6mlrG5CrRVtPr3kBh8paahr3ywtEGYl7rlmhu8H+uCqUNZ/Z5nRVUoifLTtyuncZAwyZXyudf8PP0HCy6F7kfeHPIa5j4sjge7lbmDdfcWD0zA5raeBocLOAjbZwHAHqsmGYUqbbavez5cuvP5FqrJSlddxQZ6hginh94neG1r2U7BUkZxu2ntS3vkaSTxWcdka2lZK2udNMyGLUVJYGj+8az/AJpJ5Hor67B6Ysaw08Ba0khu7bYE8SBZDg9Mcl6eDsABv4beyBqANNFWs2opp8L0fhrtp0KDciN2tv8AKPsvpZWFz0nd3CCIigkIiIAiIgMqjbRwubUvJGjrEeGg/RXhaeJ4eydha7jyPMFZ+XYpYetxPZ6MyMLWVGopPYjsHkaYI7cm2PjzVCx2hkw2sZUQj8Nzy5vT9qM+V7fyVhZJLSSlp16jk4dQpirp4q2nLHate3zaRwPiCvRcNXjUguE0GOw08DXdXelPn1Pibd11G4MPZlj0PQ9/gVUdndpG0UMtPO12aN7soA4m+rSeWt9e9RNJilThs0sIIcGvs5rr5T0cOlxZRFdVOmlkldYF7i424arJQoYBWlCWsHZr66aHtjGKy1UplkPc1vJo6BaV1hFUbWMFFWWx+h0RF5CSYWURAERFBIREQBERAEREAREQBERAEREAREQBERAEREAREQBERAEREAREUkFZ2zDbQ/Nc+mv62Xzs2wiJxPAu08rX/ruWEXdZD+RDzLeczaypLvkULbkj3+a3RgPjlH8lXkRdIinDfkw6IK3YBsNLUwNmdIIg4nKDxLeTvPVEWnznGVcLSjKm9W7e4vM//9k='))),
              Text(
                  'Gagal Gelar Piala Dunia U-20, Indonesia Telan Kerugian Rp 3,5 Triliun Lebih',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
              Divider(thickness: 5, color: Colors.pink),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    'Johanes Chandra',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.calendar_today, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    '01 May 2023',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 16),
                  Icon(Icons.category_rounded, color: Colors.white),
                  Text('Local', style: TextStyle(color: Colors.white))
                ],
              ),
              Divider(thickness: 5, color: Colors.pink),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                    'Pengumuman ini disampaikan setelah pertemuan ketua Umum PSSI, Erick Thohir, dan Presiden FIFA, Gianni Infantino, di Doha, Qatar. Namun, FIFA tidak memberikan alasan jelas terkait pembatalan tersebut dalam pengumuman resminya. Tetapi dari situasi yang sedang terjadi, penolakan terhadap keikutsertaan dan kehadiran timnas Israel ke Indonesia diduga sebagai salah satu penyebabnya.',
                    style: TextStyle(color: Colors.white, fontSize: 25)),
              )
            ],
          ),
        ));
  }
}
