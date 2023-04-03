import argparse
import os
import yaml


import jinja2


def run_template_engine(blacklist_file, template_file, output_file):
    template_path, template_file = os.path.split(template_file)

    with open(blacklist_file) as bf:
        context = yaml.safe_load(bf)
    
    context['domains'] = [d for blockset in context['blacklist']
                          for d in blockset['domains']]

    result = jinja2.Environment(
        loader=jinja2.FileSystemLoader(template_path or './')
    ).get_template(template_file).render(context)

    with open(output_file, 'w') as of:
        of.write(result)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('blacklist')
    parser.add_argument('template')
    parser.add_argument('outfile')
    args = parser.parse_args()
    run_template_engine(args.blacklist, args.template, args.outfile)


if __name__ == '__main__':
    main()
