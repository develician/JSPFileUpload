package file;

public class FileDTO {
    String fileName;
    String realFileName;

    public FileDTO(String fileName, String realFileName) {
        this.fileName = fileName;
        this.realFileName = realFileName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getRealFileName() {
        return realFileName;
    }

    public void setRealFileName(String realFileName) {
        this.realFileName = realFileName;
    }
}
