package application.model.utility;

import java.text.DecimalFormat;

public class Utils {

	public static String getNumberFormat(String format, int number) {
		return new DecimalFormat(format).format(number);
	}
	
}
