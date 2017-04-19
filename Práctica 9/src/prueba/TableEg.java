package prueba;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class TableEg {
	public static void main(String[] args) {
		String html = "http://www.geforce.com/hardware/desktop-gpus/geforce-gtx-1080-ti/specifications";
		try {
			Document doc = Jsoup.connect(html).get();
			// System.out.println(doc.toString());

			// FILE SECTION
			String path = "FILE.txt";
			File file = new File(path);
			BufferedWriter bw;
			if (file.exists()) {
				bw = new BufferedWriter(new FileWriter(file));
				bw.write(doc.toString());
			} else {
				bw = new BufferedWriter(new FileWriter(file));
			}
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}