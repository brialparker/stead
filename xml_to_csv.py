import csv
from lxml import etree

# in:  xml with trader joe's locations
# out:  csv with trader joe's locations

out = raw_input("Name for output file:  ")
if out.strip() is "":
  out = "trader-joes-all-locations.csv"

out_data = []

# use recover=True to ignore errors in the XML
# examples of errors in this XML:
#   missing "<" in opening tag:
#   fax></fax>
# missing "</" in closing tag:
#   <uid>1429860810uid>
# 
# also ignore blank text
parser = etree.XMLParser(recover=True, remove_blank_text=True)

# xml on disk...could also pass etree.parse a URL
file_name = "trader-joes-all-locations.xml"

# use lxml to read and parse xml
root = etree.parse(file_name, parser)

# element names with data to keep
tag_list = [ "name", "address1", "address2", "beer", "city", "comingsoon", "hours", "latitude", "longitude", "phone", "postalcode", "spirits", "state", "wine" ]

# add field names by copying tag_list
out_data.append(tag_list[:])

def missing_location(p):
  lat = p.find("latitude")
  lon = p.find("longitude")
  if lat is None or lon is None:
    return True
  else:
    return False

# pull info out of each poi node
def get_poi_info(p):
  # if latitude or longitude doesn't exist, skip
  if missing_location(p):
    print "tMissing location for %s" % p.find("name").text
    return None
  info = []
  for tag in tag_list:
    # if tag == "name":
    #   print "%s" % p.find(tag).text
    node = p.find(tag)
    if node is not None and node.text:
      if tag == "latitude" or tag == "longitude":
        info.append(round(float(node.text), 5))
      else:
        info.append(node.text.encode("utf-8"))
        # info.append(node.text.encode("ascii", "ignore"))
    else:
      info.append("")
  return info

print "nreading xml..."

# get all <poi> elements
pois = root.findall(".//poi")
for p in pois:
  poi_info = get_poi_info(p)
  # print "%s" % (poiInfo)
  if poi_info:
    out_data.append(poi_info)

print "finished xml, writing file..."

out_file  = open(out, "wb")
csv_writer = csv.writer(out_file, quoting=csv.QUOTE_MINIMAL)
for row in out_data:
  csv_writer.writerow(row)
 
out_file.close()

print "wrote %sn" % out
