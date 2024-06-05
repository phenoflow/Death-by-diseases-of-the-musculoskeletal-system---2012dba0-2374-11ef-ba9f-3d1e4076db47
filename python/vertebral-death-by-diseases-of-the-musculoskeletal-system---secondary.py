# John, A, McGregor, J., Jones, I., Lee, S. C., Walters, J. T. R., Owen, M. J., O'Donovan, M., DelPozo-Banos, M., Berridge, D., and Lloyd, K., 2024.

import sys, csv, re

codes = [{"code":"M99.5","system":"icd10"},{"code":"M48.4","system":"icd10"},{"code":"M51.1","system":"icd10"},{"code":"M51.9","system":"icd10"},{"code":"M48.5","system":"icd10"},{"code":"M51.8","system":"icd10"},{"code":"M46.3","system":"icd10"},{"code":"M47.0","system":"icd10"},{"code":"M49.5","system":"icd10"},{"code":"M43.5","system":"icd10"},{"code":"M51.0","system":"icd10"},{"code":"M51.3","system":"icd10"},{"code":"M51.4","system":"icd10"},{"code":"M51","system":"icd10"},{"code":"M46.2","system":"icd10"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('death-by-diseases-of-the-musculoskeletal-system-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["vertebral-death-by-diseases-of-the-musculoskeletal-system---secondary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["vertebral-death-by-diseases-of-the-musculoskeletal-system---secondary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["vertebral-death-by-diseases-of-the-musculoskeletal-system---secondary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
