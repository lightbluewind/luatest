waxClass{"MainViewController", UITableViewController}

function tableView_cellForRowAtIndexPath(self, tableView, indexPath)
	local cell = self:ORIGtableView_cellForRowAtIndexPath(tableView, indexPath)
	cell:textLabel():setText("" .. (10 - indexPath:row()))
	cell:detailTextLabel():setText("http://github.com/mmin18")
	cell:textLabel():setTextColor(UIColor:redColor())
	return cell
end

function tableView_heightForRowAtIndexPath(self, tableView, indexPath)
	local oriHeight = self:ORIGtableView_heightForRowAtIndexPath(tableView, indexPath)
	return oriHeight/2
end