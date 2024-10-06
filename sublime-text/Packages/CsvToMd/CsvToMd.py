import sublime
import sublime_plugin


class CsvToMdCommand(sublime_plugin.TextCommand):

	content = ""

	def run(self, edit):
		for region in self.view.sel():
			if not region.empty():
					s = self.view.substr(region)
					self.process(s)
					self.view.replace(edit, region, self.content)
					self.content = ""

	def process_row(self, row, isHeader = False):
		self.content += ('|' + row.replace(',', '|') + '|' + '\n')
		if isHeader:
			self.content +=  '|' + ('-|' * (row.count(',') + 1) + '\n')


	def process(self, rows):
	    first = True
	    for row in rows.split("\n"):
	        self.process_row(row.strip(), first)
	        if first:
	            first = False